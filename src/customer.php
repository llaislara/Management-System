<?php
    session_start();

    include 'connection.php';
    include 'utils.php';
    include 'includes/auth_validate.php';

    if(isset($_GET['search'])){
    $sql = "Select * from customer 
            WHERE customer_name LIKE \"%" .$_GET['search'] ."%\" 
            OR customer_phone LIKE \"%".$_GET['search']."%\"";
    }
    else{
    $sql = "Select * from customer";
    }
    try {
        $customers = $con->query($sql);
    } catch (Exception $th) {
        echo $th;
    }

    include('includes/header.php');
?>

<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-6">
            <a href="customers.php">
                <h1 class="page-header " style="color:black;">Customer</h1>
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
        <a class="btn btn-primary" href="customer.php">Back</a>
        <?php } ?>
        <a href="add_customer.php" class="btn btn-success"
            style="float: right;margin-top: 45px; margin-bottom: 20px;">
            <h4>+ Add Customer</h4>
        </a>
    </div>
    <hr>

    <table style="text-align:center" class="table table-striped table-bordered table-condensed">
        <thead>
            <tr style="text-align:center">
                <th style="text-align:center" width="15%">Customer Name</th>
                <th style="text-align:center" width="15%">Contact no</th>

                <th style="text-align:center" width="15%">Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($customers as $customer): ?>
            <tr>
                <td style="text-align:center"><?php echo $customer["customer_name"]?></td>

                <td style="text-align:center"><?php echo $customer["customer_phone"]?></td>

                <td>

                    <a class="btn btn-primary btn-sm rounded-0" type="button" data-toggle="tooltip" data-placement="top"
                        href="edit_customer.php?id=<?php print_r($customer["customer_id"]) ?> " title="Edit"><i
                            class="fa fa-edit"></i></a>


                    <a class="btn btn-danger btn-sm rounded-0" type="button" data-toggle="tooltip" data-placement="top"
                        href="utils.php?delete_customer=true&id=<?php print_r($customer["customer_id"]) ?> "
                        title="Delete"><i class="fa fa-trash"></i></a>
                    <a class="btn btn-warning" href="sell.php?id= <?php print_r($customer["customer_id"]) ?>">Sell</a>
                </td>

            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

</div>


<?php include 'includes/footer.php'; ?>