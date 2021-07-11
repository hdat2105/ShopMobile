using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DO_ÁN1.Startup))]
namespace DO_ÁN1
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
