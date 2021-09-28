require "test_helper"

class ProductTest < ActiveSupport::TestCase
   fixtures :products

   test "product is not valid without a unique title" do
     product = Product.new(title:       products(:ruby).title,
                           description: "yyy",
                           price:        1,
                           image_url:    "fred.gif")
     assert product.invalid?
     assert_equal [I18n.translate('errors.messages.taken')], product.errors[:title]
   end

   def create
     @product = Product.new(product_params)
     respond_to do |format|
       if @product.save
         format.html { redirect_to @product, notice: 'Product was succesfully created.'}
         format.json { render :show, status: :created, location @product}
       else
         puts @product.errors.full_messages
         format.html { render :new }
         format.json { render json: @product.errors, status: :unprocesable_entity}
       end
     end

  def new_product(image_url)
    Product.new(title:       "My Book Title",
                description: "yyy",
                price:       1,
                image_url:   image_url)
  end
  test "image_url" do
    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg http://a.b.c/x/y/z/fred.gif}
    bad = %w{fred.doc fred.gif/more fred.gif.more }
    ok.each do |image_url|
      assert new_product(image_url).valid?,"#{image_url} shouldn't be invalid"
    end
    bad.each do |image_url|
      assert new_product(image_url).invalid?,"#{image_url} shouldn't be valid"
    end
  end

  #  test "product attributes must be positive" do
  #    product = Product.new(title:       "My Book Title",
  #                          description: "yyy",
  #                          image_url:   "zzz.jpg")
  #    product.price = -1
  #    assert_product.invalid?
  #    assert_equal ["must be greater than or equal to 0.01"],
  #      product.errors[:price]
  #
  #    product.price = 0
  #    assert_product.invalid?
  #    assert_equal ["must be greater than or equal to 0.01"],
  #      product.errors[:price]
  #
  #    product.price = 1
  #    assert_product.invalid?
  # end
end
