(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= z (str.++ "26" x y)))

(assert (str.in_re y (re.* (re.+ (re.union (str.to_re "60") (str.to_re "6"))))))
(assert (str.in_re x (re.+ (re.+ (re.++ (str.to_re "65") (re.range "4" "7"))))))
(assert (str.in_re z (re.+ (re.* (re.union (re.range "1" "3") (re.range "5" "9"))))))

(assert (<= (+ (* (- 4) (str.len x)) (* (- 8) (str.len y)) (* (- 3) (str.len z))) 100))
(assert (<= (+ (* 9 (str.len y)) (* (- 9) (str.len z)) (* 6 (str.to_int x))) 69))

(check-sat)