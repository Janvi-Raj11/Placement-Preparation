public class EvenOddUsingSwitch {
    public static void main(String[] args) {
    int n=27;
    switch(n%2){
        case 0: System.out.println("EVEN");
        break;
        case 1:System.out.println("odd");
        break;
        default:System.out.println("Invalid INPUT");
    }
    }
}
