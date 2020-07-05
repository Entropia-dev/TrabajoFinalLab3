using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Dao;

namespace Negocio
{
    public class NegocioCuenta
    {
        public Boolean altaCuenta(float pu)
        {
            return true;
        }
        public bool agregarcuentas(string email, string contrasenia, string dni, string alias)
        {
            int cant_flias = 0;
            Cuentas Cue = new Cuentas();
            Cue.set_email_cuenta(email);
            Cue.set_contrasenia(contrasenia);
            Cue.set_Dni(dni);
            Cue.set_Alias(alias);


            DaoCuenta dao = new DaoCuenta();
            if (dao.existeCuenta(Cue) == false)
            {
                cant_flias = dao.agregarCuenta(Cue);
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