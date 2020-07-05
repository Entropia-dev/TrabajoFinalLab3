using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Dao;

namespace Negocio
{
    public class NegocioClientes
    {
        public Boolean altaCliente(float pu)
        {
            return true;
        }
        public bool agregarCliente(string Dni ,string nombre, string apellido, string direccion, string sexo, string alias, string correo)
        {
            int cant_flias = 0;
            Clientes Cli = new Clientes();
            Cli.set_Dni(Dni);
            Cli.set_Nombre(nombre);
            Cli.set_Apellido(apellido);
            Cli.set_Direccion(direccion);
            Cli.set_sexo(sexo);
            
         
            Cli.set_Usuario_Cli(alias);
            Cli.set_email_cuenta(correo);

            DaoClientes dao = new DaoClientes();
            if (dao.existeCliente(Cli) == false)
            {
                cant_flias = dao.agregarCliente(Cli);
            }
            if (cant_flias == 1)
            {
                return true;
            }
            else
                return false;

        }
    }
}
