{strip}
    <script type="text/javascript">
        (function(w, _, $) {
            $(document).ready(function(){
                w.dataLayer = w.dataLayer || [];
                w.dataLayer.push({
                    "ecommerce": {
                        "detail": {
                            "products": [
                                {
                                    "id": {$product.product_id},
                                    "name" : "{$product.product}",
                                    "price": "{$product.price}",
                                    "brand": "{$ym_brand}",
                                    {if $yml_market_category}
                                    "category": "{$yml_market_category}",
                                    {/if}
                                }
                            ]
                        }
                    }
                });
            });

            $(document).on('click', 'button[type=submit][name^="dispatch[checkout.add"]', function() {

                var amount = 1;
                if ($('.cm-amount').val()) {
                    amount = $('.cm-amount').val();
                }

                w.dataLayer = w.dataLayer || [];
                w.dataLayer.push({
                    "ecommerce": {
                        "add": {
                            "products": [
                                {
                                    "name": "{$product.product}",
                                    "price": "{$product.price}",
                                    {if $ym_brand}
                                    "brand": "{$ym_brand}",
                                    {/if}
                                    {if $yml_market_category}
                                    "category": "{$yml_market_category}",
                                    {/if}
                                    "quantity": amount
                                }
                            ]
                        }
                    }
                });
            });

        }(window, Tygh, Tygh.$));
    </script>
{/strip}
