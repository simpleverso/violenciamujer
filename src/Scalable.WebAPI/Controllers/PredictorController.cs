using System;
using Microsoft.AspNetCore.Mvc;
using Scalable.Model.DataModels;
using Scalable.Model.Engine;

namespace Scalable.WebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PredictorController : ControllerBase
    {
        private readonly MLModelEngine<SampleObservation, SamplePrediction> _modelEngine;

        public PredictorController(MLModelEngine<SampleObservation, SamplePrediction> modelEngine)
        {
            _modelEngine = modelEngine;
        }

        // GET api/predictor/womanviolenceinference?descripcion=reportante indica una mujer golpeada fuera de su casa
        [HttpGet]
        [Route("womanviolenceinference")]
        public ActionResult<string> PredictSentiment([FromQuery]string descripcion)
        {
            SampleObservation sampleData = new SampleObservation() { Descripcion = descripcion };

            SamplePrediction prediction = _modelEngine.Predict(sampleData);



            string resultado = "";
            float isToxic = prediction.Prediction;
            if (isToxic == 1)
            {
                resultado = "True";
            }
            else
            {
                resultado = "False";
            }
            float probability = prediction.Score[0] * 100;
            string retVal = $"Inferencia:'{resultado}' con {probability.ToString()}% de probabilidad de violencia hacia  la mujer, del texto: '{descripcion}'";

            return retVal;
        }
    }
}