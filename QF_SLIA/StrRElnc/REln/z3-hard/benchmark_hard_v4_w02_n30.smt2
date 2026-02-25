(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re y (re.++ (re.range "2" "5") (re.+ (re.range "2" "4")))))
(assert (str.in_re x (re.+ (str.to_re "22"))))
(assert (str.in_re a (re.+ (str.to_re "701"))))
(assert (str.in_re z (re.++ (str.to_re "9") (re.union (str.to_re "0") (re.+ (re.range "1" "6"))))))

(assert (< (+ (* (- 6) (str.to_int x)) (str.to_int y) (* (- 3) (str.to_int z)) (* (- 3) (str.to_int a))) 68))
(assert (= (+ (* (- 10) (str.len x)) (* 4 (str.len y)) (* (- 3) (str.len z)) (* (- 3) (str.len a))) 16))

(check-sat)