#include <jni.h>
#include <string>
#include "seal/seal.h"

extern "C" {

JNIEXPORT jstring JNICALL Java_SEALWrapper_encryptMessage(JNIEnv *env, jobject, jstring jmessage) {
    const char *cmessage = env->GetStringUTFChars(jmessage, nullptr);

    // Setup encryption parameters
    seal::EncryptionParameters parms(seal::scheme_type::bfv);
    parms.set_poly_modulus_degree(4096);
    parms.set_coeff_modulus(seal::CoeffModulus::BFVDefault(4096));
    parms.set_plain_modulus(seal::PlainModulus::Batching(4096, 20));

    seal::SEALContext context(parms);
    seal::KeyGenerator keygen(context);
    seal::PublicKey public_key;
    keygen.create_public_key(public_key);
    seal::Encryptor encryptor(context, public_key);

    // Convert string to integer
    int input_value = std::stoi(cmessage);
    seal::BatchEncoder encoder(context);
    std::vector<uint64_t> input_vec(encoder.slot_count(), input_value);

    seal::Plaintext plain;
    encoder.encode(input_vec, plain);

    seal::Ciphertext encrypted;
    encryptor.encrypt(plain, encrypted);

    std::string result = "Encrypted size: " + std::to_string(encrypted.size());

    env->ReleaseStringUTFChars(jmessage, cmessage);
    return env->NewStringUTF(result.c_str());
}
}

