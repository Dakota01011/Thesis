package knntest;

import java.util.ArrayList;
import java.util.Random;

public class KNNalgorithm {
	
	private ArrayList<DataPoint> trainingSet = null;
	private int numberOfPoints = 10000;
	private int k = 3;
	private DataPoint referance = null;

	public static void main(String[] args)
	{
		KNNalgorithm knnAlgor = new KNNalgorithm();
	}
	
	public KNNalgorithm()
	{
		setupData();
		
		for (int i = 0; i < numberOfPoints; i++)
		{
			double dist = calculateDistance(referance, trainingSet.get(i));
			trainingSet.get(i).setDistanceFromRef(dist);
		}

		SortList();
		
		printOutput();
		
	}
	
	private void setupData()
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
		
		referance = new DataPoint(gen.nextInt(1000), gen.nextInt(1000), "NA");
	}
	
	private double calculateDistance(DataPoint dp1, DataPoint dp2)
	{
		return Math.sqrt(Math.pow(Math.abs(dp1.getX() - dp2.getX()), 2) + Math.pow(Math.abs(dp1.getY() - dp2.getY()), 2));
	}
	
	private void SortList()
	{
		boolean flag = true;   // set flag to true to begin first pass
		DataPoint temp;   //holding variable

		while ( flag )
		{
			flag= false;    //set flag to false awaiting a possible swap
			for(int j=0;  j < numberOfPoints-1;  j++ )
			{
				if ( trainingSet.get(j).getDistanceFromRef() > trainingSet.get(j+1).getDistanceFromRef() )
				{
					temp = trainingSet.get(j);//swap elements
					trainingSet.set(j, trainingSet.get(j+1));
					trainingSet.set(j+1, temp);
					flag = true;//shows a swap occurred
				}
			}
		}
	}

	private void printOutput()
	{
		System.out.println("Name\tX\tY\tClass\tDistance");
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
			System.out.println(i + "\t" + trainingSet.get(i).getX() + "\t" + trainingSet.get(i).getY() + "\t" + trainingSet.get(i).getClassification() + "\t" + trainingSet.get(i).getDistanceFromRef());
		}
		
		if (redVote > blueVote)
		{
			System.out.println("Ref class is red");
			referance.setClassification("red");
		}
		else
		{
			System.out.println("Ref class is blue");
			referance.setClassification("blue");
		}
	}
}
