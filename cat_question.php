<?php include 'db_connect.php' ?>
<?php include 'topbar.php' ?>
<?php include './header.php' ?>
<?php include 'navbar.php' ?>
<style>
   span.float-right.summary_icon {
    font-size: 3rem;
    position: absolute;
    right: 1rem;
    color: #ffffff96;
}
.imgs{
		margin: .5em;
		max-width: calc(100%);
		max-height: calc(100%);
	}
	.imgs img{
		max-width: calc(100%);
		max-height: calc(100%);
		cursor: pointer;
	}
	#imagesCarousel,#imagesCarousel .carousel-inner,#imagesCarousel .carousel-item{
		height: 60vh !important;background: black;
	}
	#imagesCarousel .carousel-item.active{
		display: flex !important;
	}
	#imagesCarousel .carousel-item-next{
		display: flex !important;
	}
	#imagesCarousel .carousel-item img{
		margin: auto;
	}
	#imagesCarousel img{
		width: auto!important;
		height: auto!important;
		max-height: calc(100%)!important;
		max-width: calc(100%)!important;
	}
</style>

<div class="containe-fluid">
	<div class="row mt-3 ml-3 mr-3">
        <div class="col-lg-10 ml-auto">
            <div class="card">
                <div class="card-body">
                    <?php echo "Category:". $_GET['val']."!"  ?>
                    <hr class="divider" style="max-width: 100%">
                    <h4><i class="fa fa-question-circle text-primary"></i><?php echo $_GET['val'];?></h4>
                    <div class="row">
                    <?php
                    $cate = $_GET['val'];
                    $sql = $conn->query("SELECT * FROM topics t, categories u where u.id = t.category_ids and u.name = '$cate' order by unix_timestamp(date_created) desc");
                    $conn->close();
                     while($row=$sql->fetch_assoc()):
                    ?>
                        <div class="col-md-12 ml-auto">
                        <div class="card mb-12 ml-auto">
                            <div class="card-body">
                                <p>
                                    <large><i class="fa fa-paper-plane text-primary"></i> <b><?php echo $row['title'] ?></b></large>
                                </p>
                                <hr class="divider" style="max-width: 100%">
                                <p><small><i><?php echo "Category:".$row['name'] ?></i></small></p>
                                <p><small><i><?php echo $row['content'] ?></i></small></p>
                            </div>
                        </div>
                        </div>
                    <?php endwhile; ?>
            </div>      			
        </div>
    </div>
</div>
<script>
	$('#manage-records').submit(function(e){
        e.preventDefault()
        start_load()
        $.ajax({
            url:'ajax.php?action=save_track',
            data: new FormData($(this)[0]),
            cache: false,
            contentType: false,
            processData: false,
            method: 'POST',
            type: 'POST',
            success:function(resp){
                resp=JSON.parse(resp)
                if(resp.status==1){
                    alert_toast("Data successfully saved",'success')
                    setTimeout(function(){
                        location.reload()
                    },800)

                }
                
            }
        })
    })
    $('#tracking_id').on('keypress',function(e){
        if(e.which == 13){
            get_person()
        }
    })
    $('#check').on('click',function(e){
            get_person()
    })
    function get_person(){
            start_load()
        $.ajax({
                url:'ajax.php?action=get_pdetails',
                method:"POST",
                data:{tracking_id : $('#tracking_id').val()},
                success:function(resp){
                    if(resp){
                        resp = JSON.parse(resp)
                        if(resp.status == 1){
                            $('#name').html(resp.name)
                            $('#address').html(resp.address)
                            $('[name="person_id"]').val(resp.id)
                            $('#details').show()
                            end_load()

                        }else if(resp.status == 2){
                            alert_toast("Unknow tracking id.",'danger');
                            end_load();
                        }
                    }
                }
            })
    }
</script>