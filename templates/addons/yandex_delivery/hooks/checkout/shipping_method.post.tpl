{if $cart.chosen_shipping.$group_key == $shipping.shipping_id && $shipping.module == 'yandex'}

    {if $display == "radio"}
        {if $shipping.service_params.display_type == 'CMS'}
            {if $cart.shippings_extra.yd.data.$group_key[$shipping.shipping_id].pickup_points}
                <div class="clearfix">
                    {include file="addons/yandex_delivery/views/yandex_delivery/components/cms.tpl"}
                </div>
            {/if}
        {else}
            <div class="clearfix">  
                {include file="addons/yandex_delivery/views/yandex_delivery/components/widget.tpl"}
            </div>
        {/if}
        
    {elseif $display == "select"}
        <option value="{$shipping.shipping_id}" {$selected}>{$shipping.shipping} {$delivery_time} - {$rate nofilter}</option>

    {elseif $display == "show"}
        <p>
            {$strong_begin}{$rate.name} {$delivery_time} - {$rate nofilter}{$strong_begin}
        </p>
    {/if}

{/if}