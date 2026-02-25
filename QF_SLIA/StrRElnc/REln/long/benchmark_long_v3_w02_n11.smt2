(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))

(assert (str.in_re y (re.+ (re.+ (str.to_re "775")))))
(assert (str.in_re z (re.++ (re.+ (re.* (str.to_re "36"))) (re.+ (re.range "0" "8")))))
(assert (str.in_re x (re.* (re.++ (re.+ (re.+ (re.range "6" "9"))) (re.range "3" "9")))))

(assert (> (+ (* (- 3) (str.len x)) (- (str.len y)) (* (- 6) (str.len z))) 50))
(assert (< (+ (* 8 (str.to_int x)) (* (- 6) (str.to_int y)) (* (- 5) (str.to_int z))) 63))

(check-sat)