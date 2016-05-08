class CreateDetallePedidos < ActiveRecord::Migration
  def change
    create_table :detalle_pedidos do |t|
      t.integer :pedido_id
      t.integer :articulo_id
      t.integer :cantidad
      t.integer :precio_unitario

      t.timestamps null: false
    end
  end
end
