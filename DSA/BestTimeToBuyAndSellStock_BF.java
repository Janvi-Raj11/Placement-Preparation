public class BestTimeToBuyAndSellStock_BF {
    public static void main(String[] args) {
        int[] prices = {7,6,4,3,1};
         int res=maxProfit(prices);
         System.out.println("Result: " +res);
        
    }
    public  static int maxProfit(int[] prices) {
        int maxProfit=0;

        for(int i=0;i<prices.length;i++){
            for(int j=i+1;j<prices.length;j++){
                if(maxProfit < prices[j]-prices[i]){
                    maxProfit=prices[j]-prices[i];
                }

            }
        }
        return maxProfit;
    }
}
