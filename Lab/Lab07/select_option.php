<?php
require_once 'connect_db.php';
?>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>@Department</title>
</head>
<body>
<label> Department
    <select>
        <?php if($resDepart):?>
            <?php foreach ($resDepart as $value):?>
            <option value="<?=$value['id']?>"><?=$value['name']?> </option>
            <?php endforeach?>
        <?php endif ?>
    </select>
</label>

<label> Department GROUP
<select>
<?php if($resDepart):?>
    <?php foreach ($resDepart as $value):?>
        <optgroup label="<?=$value['name']?>">
        <?php
            $stmt->bind_param("i", $id);
            $id = $value['id'];
            $stmt->execute();
            $result = $stmt->get_result();
        ?>
        <?php while ($rows = $result->fetch_assoc()) :?>
            <option value="<?=$rows['id_cate']?>"><?=$rows['name_cate']?> </option>
        <?php endwhile; ?>
        </optgroup>
    <?php endforeach?>
<?php endif ?>
</select>
</label>


<label> Department GROUP 1 Cau Query
    <select>
        <?php if($multi):?>
            <?php foreach ($multi as $key =>$value):?>
                <optgroup label="<?=$key?>">
                    <?php

                    ?>
                    <?php foreach ($value as $k => $v) :?>
                        <option value="<?=$k?>"><?=$v?> </option>
                    <?php endforeach; ?>
                </optgroup>
            <?php endforeach?>
        <?php endif ?>
    </select>
</body>
</html>