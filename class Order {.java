class Order {

    protected int orderId;
    protected String orderDate;
    protected double totalAmount;

    // Parent Constructor
    public Order(int orderId, String orderDate, double totalAmount) {
        this.orderId = orderId;
        this.orderDate = orderDate;
        this.totalAmount = totalAmount;

        System.out.println("Order Created Successfully");
    }

    // Parent Method
    public double calculateDiscount() {
        return totalAmount * 0.05;
    }

    public void displayOrder() {
        System.out.println("Order ID      : " + orderId);
        System.out.println("Order Date    : " + orderDate);
        System.out.println("Total Amount  : " + totalAmount);
    }
}

class PremiumOrder extends Order {

    private String membership;

    // Child Constructor
    public PremiumOrder(int orderId, String orderDate, double totalAmount, String membership) {
        super(orderId, orderDate, totalAmount);
        this.membership = membership;
    }

    // Method Overriding
    @Override
    public double calculateDiscount() {
        return super.calculateDiscount() + (totalAmount * 0.10);
    }

    @Override
    public void displayOrder() {
        super.displayOrder();
        System.out.println("Membership    : " + membership);
        System.out.println("Discount      : " + calculateDiscount());
    }
}

public class EcommerceApp {

    public static void main(String[] args) {

        PremiumOrder obj = new PremiumOrder(
                123,
                "07-07-2026",
                5000,
                "Gold");

        System.out.println();
        obj.displayOrder();
    }
}