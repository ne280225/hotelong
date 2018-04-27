names = %w(プランなし 一人旅プラン 女子旅プラン 旅行プラン 家族プラン 花火プラン 激安プラン)
apply_counts = %w(0 1 2 2 2 3 3)
prices = %w(0 5500 19000 17000 18100 21919 20900)

0.upto(6) do |idx|
    Plan.create(
        name: names[idx],
        apply_count: apply_counts[idx],
        price: prices[idx]
    )
end
