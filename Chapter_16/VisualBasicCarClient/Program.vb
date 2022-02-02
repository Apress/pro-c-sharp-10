Imports CarLibrary
Module Program
    Sub Main(args As String())
        Console.WriteLine("***** VB CarLibrary Client App *****")
        ' Local variables are declared using the Dim keyword.
        Dim myMiniVan As New MiniVan()
        myMiniVan.TurboBoost()

        Dim mySportsCar As New SportsCar()
        mySportsCar.TurboBoost()

        Dim dreamCar As New PerformanceCar()
        ' Use Inherited property.
        dreamCar.PetName = "Hank"
        dreamCar.TurboBoost()
        Console.ReadLine()

        'Will not compile
        'Dim internalClassInstance = New MyInternalClass()

    End Sub
End Module
