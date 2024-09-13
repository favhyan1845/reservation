hola estoy desde la vista de la ?view-reservation?

        <?php 
            foreach( $data as $value):
        ?>
        <tr>
            <?=  $value['user'] ?></br>
            <?=  $value['email'] ?></br>
            <?=  $value['date-in'] ?></br>
            <?=  $value['date-out'] ?></br>
            <?=  $value['type'] ?></br>
            <?=  $value['status'] ?></br>
        </tr>
        <?php
            endforeach;
        ?>