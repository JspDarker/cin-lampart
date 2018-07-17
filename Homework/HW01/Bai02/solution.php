<?php

class PTBac2
{

    public function delta($a, $b, $c)
    {
        return (($b*$b)-4*$a*$c);
    }

    public function nghiemPT($a, $b, $c)
    {
        $x = ((-$b)-sqrt($this->delta($a, $b, $c)))/(2*$a);
        $y = ((-$b)+sqrt($this->delta($a, $b, $c)))/(2*$a);
        return array(
            'x1' => $x,
            'x2' => $y
        );
    }

    public function isNumber($a, $b, $c)
    {
        if(is_numeric($a) && is_numeric($b) && is_numeric($c)) {
            return true;
        }
        return false;
    }
    public function GiaiPT($a, $b, $c)
    {
        if($this->isNumber($a, $b, $c) == false) {
            echo "params required numeric";
            return;
        }

        $delta = $this->delta($a, $b, $c);
        $res = $this->nghiemPT($a, $b, $c);
        if($delta < 0) {
            echo "Pt 0 nghiem";
            return;
        }

        if($delta == 0 ){
            echo "pt co nghiem kep <br>";
            echo "Nghiem la x1 = x2 = " .$res['x1'];
            return;
        }

        echo "pt co 2 nghiem <br>";
        echo "Nghiem la x1 = " .$res['x1'];
        echo "<br>Nghiem la x2 = " .$res['x2'];
        return;
    }

}
$pt = new PTBac2;
$pt->GiaiPT(1,-8,16);