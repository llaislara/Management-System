<?php
    session_start();

    include 'connection.php';
    include 'utils.php';
    include 'includes/auth_validate.php';


    if(isset($_GET['search'])){
    $sql = "Select * from vendor
            WHERE vendor_name LIKE \"%" .$_GET['search'] ."%\" 
            OR vendor_phone LIKE \"%".$_GET['search']."%\"";
    }
    else{
    $sql = "Select * from vendor,products WHERE  products.product_id = vendor.product_id";
    }
    try {
        $vendors = $con->query($sql);
    } catch (Exception $th) {
        error_log($sql);
        echo $th;
    }

    include('includes/header.php');
?>

<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-6">
            <a href="vendors.php">
                <h1 class="page-header " style="color:black;">Vendors</h1>
            </a>
        </div>

    </div>
    <?php include 'includes/flash_messages.php'?>

    <div class="well text-center filter-form ce">

        <form class="form form-inline" style="display:flex" action="">
            <label for=" input_search" style="margin-top:5px">Search</label>
            <input type="text" class="form-control" id="input_search" style="margin-left:5px" name="search"
                placeholder="Name/Contact" value="<?php if(isset($_GET['search_str'])) echo $search_data?>">

            <input type="submit" style="margin-left:5px" value=" Go" class="btn btn-primary">
        </form>

        <?php if(isset($_GET['search'])){ ?>
        <a class="btn btn-primary" href="vendors.php">Back</a>
        <?php } ?>
        <a href="add_vendor.php" class="btn btn-success" style="float: right; margin-top: 45px; margin-bottom: 20px; ">
            <h4>+ Add Vendors</h4>
        </a>
    </div>
    <hr>

    <table style="text-align:center" class="table table-striped table-bordered table-condensed">
        <thead>
            <tr style="text-align:center">
                <th style="text-align:center" width="15%">Vendor Name</th>
                <th style="text-align:center" width="15%">Contact no</th>
                <th style="text-align:center" width="15%">Category</th>
                <th style="text-align:center" width="15%">Product</th>
                <th style="text-align:center" width="10%">Quantity</th>
                <th style="text-align:center" width="10%">Price</th>
                <th style="text-align:center" width="15%">Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($vendors as $vendor): ?>
            <tr>
                <td style="text-align:center"><?php echo $vendor["vendor_name"]?></td>

                <td style="text-align:center"><?php echo $vendor["vendor_phone"]?></td>
                <td style="text-align:center"><?php echo $vendor["product_category"]?></td>
                <td style="text-align:center"> <?php echo $vendor["product_name"]?></td>
                <td style="text-align:center"><?php echo $vendor["vendor_quantity"]?></td>
                <td style="text-align:center"><?php echo $vendor["vendor_price"]?></td>
                <td>


                    <a class="btn btn-primary btn-sm rounded-0" type="button" data-toggle="tooltip" data-placement="top"
                        href="edit_vendor.php?id=<?php print_r($vendor["id"]) ?> " title="Edit"><i
                            class="fa fa-edit"></i></a>
                    <a class="btn btn-danger btn-sm rounded-0" type="button" data-toggle="tooltip" data-placement="top"
                        href="utils.php?delete_vendor=true&id=<?php print_r($vendor["id"]) ?> " title="Delete"><i
                            class="fa fa-trash"></i></a>

                    <a class="btn btn-success" type="submit" name="id"
                        href="buy.php?vendors=true&id=<?php print_r($vendor["id"]) ?> ">Buy</a>

                </td>

            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

<?php include 'includes/footer.php'; ?>