public class Calculator {
    //#!
    public static Integer add( Integer a, Integer b){
               return a + b;
    }
    
    //#2
    public static Integer multiply(Integer c, Integer d){
        Integer amt = 0;
        for(Integer i = 0; i < d; i++ ){
            amt = add(amt, c);
        }
        return amt;
    }   
    
    //#3
    public static Integer divide(Integer div, Integer num){
        Integer i = 0;
        Integer ans = 0;
        for(ans = 0;i < div; ans++){
            i = add(i, num);
        }
        if ((div - i) < 0){ans--;}
        return ans;
        
    }        
    
    //#4
    public static Integer Mod(Integer div2, Integer num2){
        Integer rem = 0;
        rem = (div2 - num2 * (div2 / num2));
        return rem;
    }
    
    //#5
}