function setEqualHeight(columns) {
    var tallestcolumn = 0;

    columns.each(
        function() {
            currentHeight = parseInt($(this).height());

            if(currentHeight > tallestcolumn) {
                tallestcolumn  = currentHeight;
            }
        }
    );
    columns.height(tallestcolumn);
}


$(document).ready(function() {
    setEqualHeight($("#body-site  > div"));
});
