package paquete;

public class Paciente extends Persona
{
    String lugarAtencion, motivoDeConsulta, medicoQueAtendio;
    
    @Override
    public String imprimir()
    {
        super.imprimir();
        return (apellido + " " + nombre + " de codigo " + codigo + ", sexo " + sexo + ", direccion " + direccion + ", fue atendido en " + lugarAtencion + " por " + medicoQueAtendio + " por " + motivoDeConsulta + ", el día " + fecha);
    }
}
