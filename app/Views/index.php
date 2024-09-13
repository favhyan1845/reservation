<a href=" <?= base_url(); ?>/booking-reservation/">Reserva</a>

<table>
    <thead>
        <td>Usurario</td>
        <td>Email</td>
        <td>Fecha inicio de resarva</td>
        <td>Fecha fin</td>
        <td>Ver mas</td>
        <td>Modificar</td>
        <td>Cancelar</td>
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
            <td><a href=" <?= base_url(); ?>view-reservation/<?=  $value['id'] ?>">Ver más</a></td>
            <td><a href=" <?= base_url(); ?>modify-reservation/<?=  $value['id'] ?>">Modificar</a></td>
            <td><a href=" <?= base_url(); ?>cancel-reservation/<?=  $value['id'] ?>">Cancelar</a></td>
        </tr>
        <?php
            endforeach;
        ?>
    </tbody>
</table>