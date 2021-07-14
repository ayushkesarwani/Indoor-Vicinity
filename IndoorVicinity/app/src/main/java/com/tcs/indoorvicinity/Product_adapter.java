package com.tcs.indoorvicinity;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;

import java.util.ArrayList;

public class Product_adapter extends RecyclerView.Adapter<Product_adapter.ViewHolder> {
    private ArrayList<Products> product;
    ItemClicked activity;
    public Product_adapter(Context context, ArrayList<Products> list) {
        product=list;
        activity = (ItemClicked) context;

    }
    public interface ItemClicked
    {
        public void onItemClicked(String index,String s1);
    }



    class ViewHolder extends RecyclerView.ViewHolder
    {
        TextView tv1,tv2,tv3;
        ImageView itempic;
        Button b1;
        public ViewHolder(@NonNull final View itemView) {
            super(itemView);
            tv1=itemView.findViewById(R.id.vendor_product_name);
            tv2=itemView.findViewById(R.id.vendor_product_price);
            tv3=itemView.findViewById(R.id.vendor_product_discount);
            b1=itemView.findViewById(R.id.btn_vendor_delete);




            itempic=itemView.findViewById(R.id.vendor_product_img);
            b1.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    String product_name=product.get(getAbsoluteAdapterPosition()).getProduct_name();
                    activity.onItemClicked(product_name,"product");
                }
            });
            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {

                    System.out.println("Item clicked " +getItemCount() );
                    System.out.println("2 "+getAbsoluteAdapterPosition());





                }
            });
        }

    }


    @NonNull
    @Override
    public Product_adapter.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View v= LayoutInflater.from(parent.getContext()).inflate(R.layout.product_v,parent,false);
        return new ViewHolder(v);
    }

    @Override
    public void onBindViewHolder(@NonNull Product_adapter.ViewHolder holder, int position) {
        holder.itemView.setTag(product.get(position));
        holder.tv1.setText(product.get(position).getProduct_name());
        holder.tv2.setText(product.get(position).getProduct_brand());
        holder.tv3.setText(product.get(position).getProduct_discount()+"% off");
        holder.itempic.setImageResource(R.drawable.car1);

        String text=holder.tv1.getText().toString().trim();
        text=text.replaceAll(" ","");
        System.out.println("text"+text);
        String url="https://ayushmawasthi.000webhostapp.com/"+text+".png";
        Glide.with(holder.itempic.getContext())
                .load(url)
                .placeholder(R.drawable.car1)
                .into(holder.itempic);


    }

    @Override
    public int getItemCount() {
        return product.size();

    }
}
