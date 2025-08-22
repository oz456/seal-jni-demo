public class SEALWrapper {
    static {
        System.loadLibrary("sealwrapper");
    }

    public native String encryptMessage(String message);

    public static void main(String[] args) {
        SEALWrapper wrapper = new SEALWrapper();
        String result = wrapper.encryptMessage("1");
        System.out.println("Result: " + result);
    }
}

