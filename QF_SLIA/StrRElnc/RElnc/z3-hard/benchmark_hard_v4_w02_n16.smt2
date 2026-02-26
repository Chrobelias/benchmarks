(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= z (str.++ x "65" y a)))

(assert (str.in_re x (re.++ (str.to_re "67") (re.+ (re.++ (str.to_re "54") (re.+ (str.to_re "27")))))))
(assert (str.in_re y (re.++ (re.union (re.++ (re.* (re.range "2" "9")) (str.to_re "21")) (str.to_re "625")) (str.to_re "4"))))
(assert (str.in_re a (re.union (re.* (str.to_re "11")) (str.to_re "2"))))
(assert (str.in_re z (re.union (re.+ (re.range "2" "7")) (re.+ (re.* (re.range "1" "6"))))))

(assert (< (+ (* (- 2) (str.len y)) (str.len z) (* 8 (str.to_int z)) (* 4 (str.to_int a))) 82))

(check-sat)