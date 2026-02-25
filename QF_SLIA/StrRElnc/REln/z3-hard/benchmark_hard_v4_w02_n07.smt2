(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re z (re.+ (re.* (re.+ (str.to_re "22"))))))
(assert (str.in_re x (re.++ (re.++ (re.* (re.range "2" "8")) (re.+ (str.to_re "15"))) (str.to_re "116"))))
(assert (str.in_re y (re.union (str.to_re "635") (re.union (str.to_re "474") (re.union (str.to_re "608") (re.* (str.to_re "69")))))))
(assert (str.in_re a (re.+ (str.to_re "54"))))

(assert (>= (+ (* (- 4) (str.len x)) (* 4 (str.len a)) (* (- 4) (str.to_int a))) 63))

(check-sat)