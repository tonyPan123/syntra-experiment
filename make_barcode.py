import barcode
from barcode.writer import ImageWriter

for i in range(1, 18001):  # Replace NUM_FRAMES with actual frame count
    index_str = f"{i:05d}"
    barcode.Code128(index_str, writer=ImageWriter()).save(f"barcodes/barcode_{index_str}")