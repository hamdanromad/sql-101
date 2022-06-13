# inner join
# table tr_penjualan, ms_produk
select tr_penjualan.kode_transaksi, 
    tr_penjualan.kode_pelanggan, 
    tr_penjualan.kode_produk, 
    ms_produk.nama_produk, 
    ms_produk.harga, 
    tr_penjualan.qty, 
    ms_produk.harga*tr_penjualan.qty as total
from tr_penjualan
inner join ms_produk
on tr_penjualan.kode_produk = ms_produk.kode_produk;

# group by, aggregate
select month(order_date) as order_month,
    sum(item_price) as total_price,
case
    when sum(item_price) >= 300000000000 then 'Target Achieved'
    when sum(item_price) <= 250000000000 then 'Less performed'
    else 'Follow up'
end as remark
from sales_retail_2019
group by order_month;
