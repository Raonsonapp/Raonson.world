Row(
  children: [
    Text(user.name),
    if (context.watch<PaymentService>().isVerified)
      const Icon(Icons.verified, color: Colors.green),
  ],
)
