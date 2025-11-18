(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (str.to_re "78") (re.* (str.to_re "20")))))
(assert (str.in_re y (re.union (re.range "5" "8") (re.+ (re.union (re.range "7" "9") (re.+ (str.to_re "26")))))))
(assert (str.in_re z (re.union (re.union (str.to_re "899") (re.union (re.* (re.range "2" "4")) (str.to_re "681"))) (str.to_re "3"))))
(assert (str.in_re a (re.union (re.+ (re.+ (str.to_re "1"))) (re.range "2" "6"))))

(assert (= (+ (* (- 9) (str.len y)) (* 4 (str.to_int a))) 37))

(check-sat)