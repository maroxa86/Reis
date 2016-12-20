package reis.managedBeans;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.RequestScoped;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import reis.beans.Paquet;
import reis.bo.PaquetBO;

@ManagedBean(name="llistatPaquetsManagedBeans")
@RequestScoped
public class LlistatPaquetsManagedBeans {

	private List<Paquet> llistatPaquets;
	private Paquet paquetSeleccionat;
	
	@ManagedProperty("#{paquetBO}")
	private PaquetBO paquetBO;
	
	
	public LlistatPaquetsManagedBeans(){
		super();
	}
	
	@PostConstruct
	public void init(){
		llistatPaquets = paquetBO.carregarPaquets();
	}
	
	public void export(Object document){
		HSSFWorkbook wb = (HSSFWorkbook) document;
        HSSFSheet sheet = wb.getSheetAt(0);
        
        HSSFRow rowCab = sheet.createRow(0);
        
        HSSFCell cellCab = rowCab.createCell(0);
        cellCab.setCellValue("Id Paquet");
        
        cellCab = rowCab.createCell(1);
        cellCab.setCellValue("Nom");

        cellCab = rowCab.createCell(2);
        cellCab.setCellValue("Id Tram");

        cellCab = rowCab.createCell(3);
        cellCab.setCellValue("Nom Tram");

        cellCab = rowCab.createCell(4);
        cellCab.setCellValue("Id Carrer");

        cellCab = rowCab.createCell(5);
        cellCab.setCellValue("Nom Carrer");

        cellCab = rowCab.createCell(6);
        cellCab.setCellValue("Portal");

        cellCab = rowCab.createCell(7);
        cellCab.setCellValue("Telefon");

        cellCab = rowCab.createCell(8);
        cellCab.setCellValue("Tamany Paquet");
    	
        cellCab = rowCab.createCell(9);
        cellCab.setCellValue("Preu");

        int fila = 1;

        for(Paquet paquet : llistatPaquets){
        	HSSFRow row = sheet.createRow(fila);
        	
        	HSSFCell cell = row.createCell(0);
        	cell.setCellValue(paquet.getIdPaquet());

        	cell = row.createCell(1);
        	cell.setCellValue(paquet.getNom());

        	cell = row.createCell(2);
        	cell.setCellValue(paquet.getTram().getIdTram());

        	cell = row.createCell(3);
        	cell.setCellValue(paquet.getTram().getNomTram());

        	cell = row.createCell(4);
        	cell.setCellValue(paquet.getTram().getCarrer().getIdCarrer());

        	cell = row.createCell(5);
        	cell.setCellValue(paquet.getTram().getCarrer().getNombre());

        	cell = row.createCell(6);
        	cell.setCellValue(paquet.getPortal());

        	cell = row.createCell(7);
        	cell.setCellValue(paquet.getTelefon());

        	cell = row.createCell(8);
        	cell.setCellValue(paquet.getPreu().getTamanyPaquet());
        	
        	cell = row.createCell(9);
        	cell.setCellValue(paquet.getPreu().getPreu());
        	
        	fila++;
        }
        
        HSSFRow row = wb.getSheetAt(0).getRow(0);
        for(int colNum = 0; colNum < row.getLastCellNum(); colNum++){
        	wb.getSheetAt(0).autoSizeColumn(colNum);
        }
        
	}

	public List<Paquet> getLlistatPaquets() {
		return llistatPaquets;
	}

	public void setLlistatPaquets(List<Paquet> llistatPaquets) {
		this.llistatPaquets = llistatPaquets;
	}

	public PaquetBO getPaquetBO() {
		return paquetBO;
	}

	public void setPaquetBO(PaquetBO paquetBO) {
		this.paquetBO = paquetBO;
	}

	public Paquet getPaquetSeleccionat() {
		return paquetSeleccionat;
	}

	public void setPaquetSeleccionat(Paquet paquetSeleccionat) {
		this.paquetSeleccionat = paquetSeleccionat;
	}
	
}
