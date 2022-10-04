package paquete;

public class Paciente extends Hospital
{
    @Override
    public String Datos(String codigo, String apellidos, String nombres, String sexo, String direccion, String motivo, String medico, String fecha)
    {
        super.Datos(codigo, apellidos, nombres, sexo, direccion, motivo, medico, fecha);
        return "El paciente " + apellidos + " " + nombres + " de codigo " + codigo + ", direccion " + direccion + " y sexo " + sexo + " tubo una cita medica el dia " + fecha + " por " + motivo + " con el medico " + medico;
    }      
}