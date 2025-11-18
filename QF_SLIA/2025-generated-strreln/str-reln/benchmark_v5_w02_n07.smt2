(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "73")) (re.range "4" "8"))))
(assert (str.in_re y (re.* (re.++ (re.* (str.to_re "6")) (re.* (str.to_re "94"))))))
(assert (str.in_re z (re.++ (re.++ (re.* (str.to_re "93")) (str.to_re "60")) (str.to_re "62"))))
(assert (str.in_re a (re.++ (str.to_re "41") (re.* (re.range "6" "8")))))
(assert (str.in_re b (re.* (re.union (str.to_re "22") (str.to_re "995")))))

(assert (> (+ (* 6 (str.len y)) (* (- 7) (str.len a)) (* (- 2) (str.to_int z)) (* (- 8) (str.to_int b))) 4))

(check-sat)