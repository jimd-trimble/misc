using System;
using System.Threading;
using System.Threading.Tasks;
using Trimble.Ag.BusMessages;
using Trimble.Ag.GlobalTypes;
using Trimble.Ag.MessageConsumers;

namespace MessageEngineClient
{
	public class DisplayFileTest
	{
		public static async Task RunTest(UnityContainerExtension container)
		{
			var message = GetMessage();
			await container.Resolve<Trimble.Ag.MessageConsumers.FileProcessing.DisplayFileReceivedMessageConsumer>().ConsumeAsync(message, CancellationToken.None);
		}

		public static DisplayFileReceivedMessage GetMessage()
		{
			var rogueMessage = new DisplayFileReceivedMessage
			{
				AssetId = 32093,
				DeviceID = 55831,
				FileType = FileDataType.TmxData, 
				FileID  = Guid.Parse("6c8a4871-6501-4089-a636-de0e2175073f"),
				StorageKey = @"rogue/connectedfarm/field/filesupload/fromvehicle/32093/6c8a4871-6501-4089-a636-de0e2175073f", 
				SuppressNotifications = true,
				OrgId  = 174873
				//UserId { get; set; }
				//IgnoreLicense { get; set; }
			};

			var message = new DisplayFileReceivedMessage
			{
				AssetId = 47307,
				DeviceID = 33523,
				DCDeviceID = Guid.Parse("41674731-323d-3537-3134-353530373132"),
				FileType = FileDataType.TmxData, 
				FileID  = Guid.Parse("fae62210-654f-40ad-b01e-b8621b4059db"),
				StorageKey = @"prod/device-sync/33523/e9e2afd8-257d-4f70-83c7-12aa0723a5de", 
				SuppressNotifications = true,
				OrgId  = 126680
				//UserId { get; set; }
				//IgnoreLicense { get; set; }
			};

			var message2 = new DisplayFileReceivedMessage
			{ };

			return message;
		}
	}
}
