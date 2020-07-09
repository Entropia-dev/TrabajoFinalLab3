using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Dao;

namespace Negocio
{
    public class NegocioComprar
    {
        Ventas ven = new Ventas();
        DaoComprar com = new DaoComprar();
        public bool getCompra(string alias, decimal pu)
        {
            int cantFilas = 0;

            ven.setAlia(alias);
            ven.set_importe(pu);

            cantFilas = com.agregarCompra(ven);

            if (cantFilas == 1)
                return true;
            else
                return false;
        }
    }
}
