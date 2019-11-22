using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Freight.Startup))]
namespace Freight
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
