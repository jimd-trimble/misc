using System;
using System.Threading;
using System.Threading.Tasks;
using Trimble.Ag.BusMessages;
using Trimble.Ag.DataAccess;
using Trimble.Ag.DataContracts.Reports;
using Trimble.Ag.DependencyInjection;
using Trimble.Ag.MessageConsumers;
using Trimble.Ag.ServiceBus;

namespace MessageEngineClient
{
	class Program
	{
		static async Task Main(string[] args)
		{
			var container = new UnityContainerExtension();
			DependencyInjectionContainer.Initialize(container);
			
			try
			{
				//await ImageryFileTest.RunTest(container);
				//await DisplayFileTest.RunTest(container);

				var testAccess = container.Resolve<IAccessDeviceDailyStatistics>();
				testAccess.UpdateDeviceDailyStatistics();
				//await engine.ConsumeAsync(message, CancellationToken.None);
			}
			catch (Exception e)
			{
				Console.WriteLine("OOPS!!");
				Console.WriteLine();
				Console.WriteLine(e);
				Console.WriteLine();
				Console.WriteLine("Press 'Enter' to exit.");
			}
		}
	}
}
