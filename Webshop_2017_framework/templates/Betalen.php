<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
    <!-- Identify your business so that you can collect the payments. -->
    <input type="hidden" name="business" value="kin@kinskards.com">

    <!-- Specify an Add to Cart button. -->
    <input type="hidden" name="cmd" value="_cart">
    <input type="hidden" name="add" value="1">

    <!-- Specify details about the item that buyers will purchase. -->
    <input type="hidden" name="item_name" value="Birthday - Cake and Candle">
    <input type="hidden" name="currency_code" value="USD">

    <!-- Provide a drop-down menu option field. -->
    <input type="hidden" name="on0" value="Color">
    <label for="os0">Kies uw pakket</label>
        <select name="os0" id="os0">
            <option value="Kies uw pakket">
                -- Kies uw pakket --</option>
            <option value="Bronze member">Bronze member</option>
            <option value="Silver member">Silver member</option>
            <option value="Gold member">Gold member</option>
        </select>

    <!-- Provide a drop-down menu option field with prices. -->
    <input type="hidden" name="on1" value="Size">
    <label for="os1">Prijs</label>
    <select name="os1" id="os1">
        <option
            value="Select a size">-- Select a size --</option>
        <option value="$15">$15</option>
        <option value="$24,99">$24,99</option>
        <option value="$49">$49</option>
    </select>

    <!-- Specify the price that PayPal uses for each option. -->
    <input type="hidden" name="option_index" value="1">
    <input type="hidden" name="option_select0" value="2x4">
    <input type="hidden" name="option_amount0" value="3.95">
    <input type="hidden" name="option_select1" value="3x5">
    <input type="hidden" name="option_amount1" value="4.95">
    <input type="hidden" name="option_select2" value="4x6">
    <input type="hidden" name="option_amount2" value="5.95">
	
	<!-- Display the payment button. -->
    <input type="image" name="submit"
        src="https://www.paypalobjects.com/webstatic/en_US/i/btn/png/btn_addtocart_120x26.png"
        alt="Add to Cart">
    <img alt="" width="1" height="1"
        src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" >
</form>