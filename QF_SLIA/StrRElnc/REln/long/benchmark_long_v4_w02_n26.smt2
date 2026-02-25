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

(assert (str.in_re y (re.++ (re.union (re.+ (re.range "6" "8")) (re.+ (str.to_re "599"))) (str.to_re "302"))))
(assert (str.in_re a (re.++ (str.to_re "112") (re.union (re.+ (str.to_re "22")) (str.to_re "536")))))
(assert (str.in_re x (re.* (re.range "4" "8"))))
(assert (str.in_re z (re.* (re.+ (re.+ (re.+ (str.to_re "115")))))))

(assert (>= (+ (str.len x) (* 6 (str.len a)) (* (- 8) (str.to_int z)) (* (- 8) (str.to_int a))) 79))

(check-sat)