class CreatePrimes < ActiveRecord::Migration[6.1]
  def change
    create_table :primes do |t|
      t.integer :int

      t.timestamps
    end
  end
end
