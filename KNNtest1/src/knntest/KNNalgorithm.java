package knntest;

import java.util.ArrayList;
import java.util.Random;

public class KNNalgorithm {
	
	private ArrayList<DataPoint> trainingSet = null;
	private int numberOfPoints = 10000;
	private int k = 3;

	public static void main(String[] args)
	{
		KNNalgorithm knnAlgor = new KNNalgorithm();
	}
	
	public KNNalgorithm()
	{
		trainingSet = new ArrayList<>();
		
		Random gen = new Random(System.currentTimeMillis());
		for (int i = 0; i < numberOfPoints/2; i++)
		{
			trainingSet.add(new DataPoint(gen.nextInt(1000), gen.nextInt(1000), "red"));
		}
		for (int i = 0; i < numberOfPoints/2; i++)
		{
			trainingSet.add(new DataPoint(gen.nextInt(1000), gen.nextInt(1000), "blue"));
		}
		
		DataPoint referance = new DataPoint(gen.nextInt(1000), gen.nextInt(1000), "NA");
		
		for (int i = 0; i < numberOfPoints; i++)
		{
			double dist = calculateDistance(referance, trainingSet.get(i));
			trainingSet.get(i).setDistanceFromRef(dist);
		}

		boolean flag = true;   // set flag to true to begin first pass
		double temp;   //holding variable

		while ( flag )
		{
			flag= false;    //set flag to false awaiting a possible swap
			for(int j=0;  j < numberOfPoints-1;  j++ )
			{
				if ( trainingSet.get(j).getDistanceFromRef() > trainingSet.get(j+1).getDistanceFromRef() )
				{
					temp = trainingSet.get(j).getDistanceFromRef();//swap elements
					trainingSet.get(j).setDistanceFromRef(trainingSet.get(j+1).getDistanceFromRef());
					trainingSet.get(j+1).setDistanceFromRef(temp);
					flag = true;//shows a swap occurred
				}
			}
		}
		
		System.out.println("Name\tX\tY\tClass");
		System.out.println("Ref\t" + referance.getX() + "\t" + referance.getY() + "\t" + referance.getClassification());
		int redVote = 0;
		int blueVote = 0;
		for (int i = 0; i < k; i++)
		{
			if (trainingSet.get(i).getClassification() == "red")
			{
				redVote++;
			}
			if (trainingSet.get(i).getClassification() == "blue")
			{
				blueVote++;
			}
			System.out.println(i + "\t" + trainingSet.get(i).getX() + "\t" + trainingSet.get(i).getY() + "\t" + trainingSet.get(i).getClassification());
		}
		
		if (redVote > blueVote)
		{
			System.out.println("Ref class is red");
		}
		else
		{
			System.out.println("Ref class is blue");
		}
		
		
	}
	
	private double calculateDistance(DataPoint dp1, DataPoint dp2)
	{
		return Math.sqrt(Math.pow(Math.abs(dp1.getX() - dp2.getX()), 2) + Math.pow(Math.abs(dp1.getY() - dp2.getY()), 2));
	}

}
