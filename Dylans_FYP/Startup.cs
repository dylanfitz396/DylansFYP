using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Dylans_FYP.Startup))]
namespace Dylans_FYP
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
