package knntest;

public class DataPoint {
	
	private int X;
	private int Y;
	private String Classification;
	private double distanceFromRef;

	public DataPoint(int x, int y, String classification) {
		super();
		X = x;
		Y = y;
		Classification = classification;
	}

	public int getX() {
		return X;
	}

	public void setX(int x) {
		X = x;
	}

	public int getY() {
		return Y;
	}

	public void setY(int y) {
		Y = y;
	}

	public String getClassification() {
		return Classification;
	}

	public void setClassification(String classification) {
		Classification = classification;
	}

	public double getDistanceFromRef() {
		return distanceFromRef;
	}

	public void setDistanceFromRef(double distanceFromRef) {
		this.distanceFromRef = distanceFromRef;
	}

	
	
}
