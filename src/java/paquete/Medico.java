package paquete;

public class Medico extends Persona
{
    @Override
    public String imprimir()
    {
        return (apellido + " " + nombre + " de codigo " + codigo + ", sexo " + sexo);
    }
}
