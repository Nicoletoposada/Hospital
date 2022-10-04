package paquete;

public class Medico extends Hospital
{
    @Override
    public String Datos(String codigo, String apellidos, String nombres, String sexo, String direccion, String motivo, String medico, String fecha)
    {
        super.Datos(codigo, apellidos, nombres, sexo, direccion, motivo, medico, fecha);
        return "El medico " + medico +" atendio al paciente " + apellidos + " " + nombres + " el dia " + fecha ;
    }
}
