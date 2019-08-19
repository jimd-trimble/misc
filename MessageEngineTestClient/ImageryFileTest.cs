using System;
using System.Threading;
using System.Threading.Tasks;
using Trimble.Ag.BusMessages;
using Trimble.Ag.MessageConsumers;

namespace MessageEngineClient
{
	public class ImageryFileTest
	{
		public static async Task RunTest(UnityContainerExtension container)
		{
			var message = GetMessage();
			await container.Resolve<Trimble.Ag.MessageConsumers.FileProcessing.ImageryFileReceivedMessageEngine>().ConsumeAsync(message, CancellationToken.None);
		}

		public static ImageryFileReceivedMessage GetMessage()
		{
			/*
			 {
				"StorageKey":"rogue/connectedfarm/field/filesupload/uav/42532c7b-0168-41a3-b1a3-730475e62619",
				"FileId":"42532c7b-0168-41a3-b1a3-730475e62619",
				"OrgId":174873,
				"CropYear":2019,
				"Name":"suion20180723",
				"Date":"2018-07-23T00:00:00",
				"AnalysisPropertyId":null,
				"LegendTemplateId":null
			}
			 */

			// Message for Dillon01, succeeds b/c org has advisor relationship.
			var message2 = new ImageryFileReceivedMessage
			{
				CropYear = 2019,
				Date = DateTime.Parse("2018-07-23T00:00:00"),
				FileId = Guid.Parse("42532c7b-0168-41a3-b1a3-730475e62619"),
				Name = "suion20180723",
				OrgId = 175373,
				StorageKey = @"rogue/connectedfarm/field/filesupload/uav/42532c7b-0168-41a3-b1a3-730475e62619"
			};

			/* Details for single-band float imageupload
			 {
				"StorageKey":"rogue/connectedfarm/field/filesupload/uav/c5dd3d0f-8a7f-40c8-af17-8fd9c3eaac38_tiles/eph1.tif/1",
				"FileId":"c5dd3d0f-8a7f-40c8-af17-8fd9c3eaac38",
				"OrgId":174873,
				"CropYear":2019,
				"Name":"PH (eph1)",
				"Date":"2019-05-13T00:00:00.000+0000",
				"AnalysisPropertyId":null,
				"LegendTemplateId":null
			}
			 */

			// Message for Dillon02
			var message = new ImageryFileReceivedMessage
			{
				CropYear = 2019,
				Date = DateTime.Parse("2019-07-22T20:15:25.000+0000"),
				FileId = Guid.Parse("ebfc5501-451e-4500-b8fb-c1f3aea17c92"),
				Name = "Suion_AWS",
				OrgId = 175375,
				StorageKey = @"rogue/connectedfarm/field/filesupload/uav/ebfc5501-451e-4500-b8fb-c1f3aea17c92"
			};

			// Smaller image, clipped to the extent of the 25ac Suion Small field.
			//var message = new ImageryFileReceivedMessage
			//{
			//	CropYear = 2019,
			//	Date = DateTime.Parse("2019-07-22T20:16:45.061+0000"),
			//	FileId = Guid.Parse("db4c1617-417b-4949-a510-cce1872741a0"),
			//	Name = "Suion Clipped",
			//	OrgId = 175375,
			//	StorageKey = @"rogue/connectedfarm/field/filesupload/uav/db4c1617-417b-4949-a510-cce1872741a0"
			//};
			return message;
		}
	}
}
