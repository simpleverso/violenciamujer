using Microsoft.ML.Data;

namespace Scalable.Model.DataModels
{
    public class SampleObservation
    {
        //[ColumnName("Label")]
        //public bool IsToxic { get; set; }

        //[ColumnName("Text")]
        //public string SentimentText { get; set; }



        [ColumnName("descripcion"), LoadColumn(0)]
        public string Descripcion { get; set; }


        [ColumnName("violencia"), LoadColumn(1)]
        public float Violencia { get; set; }

    }
}
