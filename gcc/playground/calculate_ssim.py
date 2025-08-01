import cv2
import argparse
from pyzbar.pyzbar import decode
from skimage.metrics import structural_similarity as ssim

def get_frame_barcode(frame):
    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    decoded_objects = decode(gray)
    for obj in decoded_objects:
        return obj.data.decode('utf-8')
    return None

def read_y4m_frames(filepath):
    cap = cv2.VideoCapture(filepath)
    frames = []
    i = 0
    while cap.isOpened():
        ret, frame = cap.read()
        if not ret:
            break
        frames.append(frame)
        i = i + 1
        #if i == 100: 
        #    break
    
    cap.release()
    return frames

def barcode_to_frame_map(frames):
    mapping = {}
    for idx, frame in enumerate(frames):
        barcode = get_frame_barcode(frame)
        #print(barcode)
        if barcode:
            mapping[barcode] = frame
    return mapping

def calculate_ssim(img1, img2):
    gray1 = cv2.cvtColor(img1, cv2.COLOR_BGR2GRAY)
    gray2 = cv2.cvtColor(img2, cv2.COLOR_BGR2GRAY)
    score, _ = ssim(gray1, gray2, full=True)
    return score

def compare_frames_by_barcode(frames1, frames2):
    ssim_scores = {}
    for frame in frames2:
        barcode = get_frame_barcode(frame)
        score = calculate_ssim(frames1[int(barcode)], frame)
        ssim_scores[barcode] = score
        print(f"Barcode {barcode}: SSIM = {score:.4f}")
    return ssim_scores

def main(args):
    frames1 = read_y4m_frames(args.o)
    frames2 = read_y4m_frames(args.n)
    print("Finish fetching frames")
    #map1 = barcode_to_frame_map(frames1)
    #map2 = barcode_to_frame_map(frames2)

    results = compare_frames_by_barcode(frames1, frames2)

    #for barcode, ssim_score in results.items():
    #    print(f"Barcode {barcode}: SSIM = {ssim_score:.4f}")

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-o', metavar='ORIGINAL_VIDEO',
                        required=True, help='original video')
    parser.add_argument('-n', metavar='NEW_VIDEO',
                        required=True, help='new video')
    args = parser.parse_args()

    main(args)