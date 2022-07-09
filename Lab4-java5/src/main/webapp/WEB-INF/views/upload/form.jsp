<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <base href="${pageContext.servletContext.contextPath}/">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <%@ page pageEncoding="utf-8"%>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
    <!-- <H1>${message}</H1>
    <form action="/upload/upload" method="post" enctype="multipart/form-data">
      <div>file</div>
      <input type="file" name="image">
      <button>upload</button>
    </form> -->


    <div class="container">
      <form action="/upload/upload" method="post" enctype="multipart/form-data" >
         <div class="row">
            <div class="col-lg-3 col-sm-12">
               <div class="form-group" style="height: 100%;">
                  <label for="files">Tải ảnh của bạn lên</label>
                  <span>
                     <div class="" style="width: 100%; height: 100%; font-size: 0px; margin-bottom: 1rem; background-color: rgb(29, 161, 242); background-image: url(&quot;https://abs.twimg.com/a/1498195419/img/t1/highline/empty_state/owner_empty_avatar.png&quot;); background-position: 50% center;">
                        <!-- react-text: 85 -->Try dropping some files.<!-- /react-text --><input type="file" accept="image/jpeg, image/png" multiple="" style="display: none;">
                     </div>
                     <input type="file" class="btn btn-secondary btn-sm btn-block" name="image">Upload new Photo</button><!-- react-text: 88 --><!-- /react-text -->
                  </span>
               </div>
            </div>
            <div class="col-lg-9 col-sm-12">
               <div class="form-group">
                <H1>${message}</H1>
               </div>
              
            </div>
         </div>
         <div class="row row justify-content-end">
            <div class="col-lg-9 col-sm-12"><button type="submit" class="btn btn-primary">Save Changes</button></div>
         </div>
      </form>
   </div>
</body>
</html>