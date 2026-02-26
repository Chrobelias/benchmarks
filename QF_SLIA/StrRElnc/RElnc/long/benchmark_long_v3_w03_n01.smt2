(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))

(assert (= (str.++ z y) (str.++ "47" x)))

(assert (str.in_re z (re.* (re.union (str.to_re "0") (re.* (re.range "3" "7"))))))
(assert (str.in_re x (re.++ (str.to_re "387") (re.union (str.to_re "65") (re.++ (str.to_re "560") (re.+ (str.to_re "0")))))))
(assert (str.in_re y (re.union (re.range "6" "8") (re.union (str.to_re "643") (re.* (re.range "5" "9"))))))

(assert (< (+ (* 10 (str.to_int x)) (* (- 5) (str.to_int y)) (* 2 (str.to_int z))) 78))
(assert (> (+ (- (str.len z)) (* (- 5) (str.to_int y))) 9))

(check-sat)