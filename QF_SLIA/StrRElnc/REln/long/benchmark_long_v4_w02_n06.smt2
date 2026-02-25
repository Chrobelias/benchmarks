(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re z (re.++ (str.to_re "65") (re.union (str.to_re "89") (re.+ (re.+ (str.to_re "455")))))))
(assert (str.in_re x (re.union (re.range "6" "8") (re.* (re.+ (re.range "0" "4"))))))
(assert (str.in_re y (re.+ (re.++ (re.range "2" "6") (re.union (re.* (str.to_re "811")) (str.to_re "459"))))))
(assert (str.in_re a (re.union (re.* (re.* (str.to_re "36"))) (str.to_re "95"))))

(assert (< (+ (* (- 5) (str.to_int x)) (* (- 10) (str.to_int y)) (* 9 (str.to_int z)) (* 7 (str.to_int a))) 18))
(assert (= (+ (* 4 (str.len x)) (* (- 4) (str.len y)) (* (- 9) (str.len z)) (* (- 7) (str.len a))) 78))

(check-sat)