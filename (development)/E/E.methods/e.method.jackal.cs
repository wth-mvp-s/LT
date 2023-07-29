using System.Reflection;

namespace ConsoleApp1tealswanmethods
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello, World!");
        }
    }
    interface IWhy
    {
        //doesn't matter
        //I am the best for the job
        //I like what I do, it amuse me
        //it's me, my life
    }

    interface IExperience // Fetch
    {
        int znapassport { get;  }
        int znagdziezrobicpassport { get;  }
        int znabron { get; }
        int znagdziekupicbron { get;  } 
        int wiejakprzygotowacbron { get;  }
        int znagdzieulokowacpieniadze { get;  }
        
    }
    interface IAccess
    {
        int jakkupicAuto { get; }
        int jakkupicbron { get; }
    }
    
    public struct Transport
    {
        public int ochronaprzedzlodziejembroni => throw new NotImplementedException();

        int Loty { get; }
        int Samochodnabron { get; }
        int Samochodnaatak { get; }
        int Yacht { get; }
        int KontaktWhiteHouse { get; }
        int KontaktPassport { get; }
    }
    interface Itransport 
    {
        Transport Transport { get; }
    }
    interface IBron
    {
        int KontaktBron { get; }
    }
    interface Iwycena : Itransport, I
    { 
        string Paszportjakacena { get; }
        string Bronjakacena { get; }
        string przygotowaniepodbron { get; }
        Transport Transoportjakacena { get; }
    }
    interface ICel : Iustalicmaterialy
    {
        string okresliczapotrzebowanieabyosiagnaccel();
        
    }
    public struct GeoCoordinate
    {
        public double Latitude { get; set; }
        public double Longitude { get; set; }
    }
    interface Iou
    {
        GeoCoordinate wybracmiejscepodkontemcelu(); 
    }
    interface Iprep : Iou
    {
        GeoCoordinate wybracmiejscepodkontemcelu();

        
        
    }
    
}