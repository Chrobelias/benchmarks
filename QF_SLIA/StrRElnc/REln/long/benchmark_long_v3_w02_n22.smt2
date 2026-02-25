(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.union (re.* (str.to_re "3")) (re.++ (str.to_re "22") (re.* (str.to_re "41"))))))
(assert (str.in_re x (re.++ (re.++ (re.union (re.+ (str.to_re "11")) (str.to_re "491")) (str.to_re "19")) (re.range "5" "7"))))
(assert (str.in_re z (re.union (re.range "4" "6") (re.++ (re.++ (str.to_re "630") (re.+ (str.to_re "490"))) (str.to_re "23")))))

(assert (> (+ (* (- 9) (str.len y)) (* 2 (str.len z)) (* (- 4) (str.to_int z))) 100))

(check-sat)