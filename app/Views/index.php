<a href=" <?= base_url(); ?>/booking-reservation/">Reserva</a>

<table>
    <thead>
        <td>Usurario</td>
        <td>email</td>
        <td>Fecha inicio de resarva</td>
        <td>fecha fin</td>
    </thead>
    <tbody>
        <?php 
            foreach( $data as $value):
        ?>
        <tr>
            <td><?=  $value['user'] ?></td>
            <td><?=  $value['email'] ?></td>
            <td><?=  $value['date-in'] ?></td>
            <td><?=  $value['date-out'] ?></td>
            <td><a href=" <?= base_url(); ?>/modifying-reservation/<?=  $value['id'] ?>">Modificar</a></td>
        </tr>
        <?php
            endforeach;
        ?>
    </tbody>
</table>