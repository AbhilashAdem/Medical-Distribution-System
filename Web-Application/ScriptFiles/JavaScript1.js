function MyFun(txt)
{
    if (parseInt(txt.value) > 0)
    {
        var grid = document.getElementById("ContentPlaceHolder1_SearchGridView");
        var index = txt.id.replace("ContentPlaceHolder1_SearchGridView_TextBox1_", "");
        var actual_quantity = grid.rows[parseInt(index) + 1].cells[5].innerHTML.trim();
        PageMethods.Check_quantity(txt.value, actual_quantity, function (success) {
            if (success == false) {
                alert("Quantity to order cannot exceed actual quantity.");
                txt.value = "";
            }
        },
        function (error) {
           
        });
    }
    else {
        alert("Quantity should be greater than 0.");
        txt.value = "";
    }
}